package com.airbnb.deeplinkdispatch;

import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkEntry.class */
public final class DeepLinkEntry {
    private static final String PARAM = "([a-zA-Z][a-zA-Z0-9_-]*)";
    private static final String PARAM_VALUE = "([a-zA-Z0-9_#'!+%~,\\-\\.\\@\\$\\:]+)";
    private final Class<?> activityClass;
    private final String method;
    private final Set<String> parameters;
    private final Pattern regex;
    private final Type type;
    private final String uriTemplate;
    private static final String PARAM_REGEX = "%7B(([a-zA-Z][a-zA-Z0-9_-]*))%7D";
    private static final Pattern PARAM_PATTERN = Pattern.compile(PARAM_REGEX);

    /* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkEntry$Type.class */
    public enum Type {
        CLASS,
        METHOD
    }

    public DeepLinkEntry(String str, Type type, Class<?> cls, String str2) {
        DeepLinkUri parse = DeepLinkUri.parse(str);
        String schemeHostAndPath = schemeHostAndPath(parse);
        this.uriTemplate = str;
        this.type = type;
        this.activityClass = cls;
        this.method = str2;
        this.parameters = parseParameters(parse);
        this.regex = Pattern.compile(schemeHostAndPath.replaceAll(PARAM_REGEX, PARAM_VALUE) + "$");
    }

    private static Set<String> parseParameters(DeepLinkUri deepLinkUri) {
        Pattern pattern = PARAM_PATTERN;
        Matcher matcher = pattern.matcher(deepLinkUri.encodedHost() + deepLinkUri.encodedPath());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    private static String parsePath(DeepLinkUri deepLinkUri) {
        return deepLinkUri.encodedPath();
    }

    private String schemeHostAndPath(DeepLinkUri deepLinkUri) {
        return deepLinkUri.scheme() + "://" + deepLinkUri.encodedHost() + parsePath(deepLinkUri);
    }

    public Class<?> getActivityClass() {
        return this.activityClass;
    }

    public String getMethod() {
        return this.method;
    }

    public Map<String, String> getParameters(String str) {
        HashMap hashMap = new HashMap(this.parameters.size());
        Matcher matcher = this.regex.matcher(schemeHostAndPath(DeepLinkUri.parse(str)));
        if (matcher.matches()) {
            int i = 1;
            for (String str2 : this.parameters) {
                String group = matcher.group(i);
                if (group != null && !"".equals(group.trim())) {
                    hashMap.put(str2, group);
                }
                i++;
            }
        }
        return hashMap;
    }

    public Type getType() {
        return this.type;
    }

    public String getUriTemplate() {
        return this.uriTemplate;
    }

    public boolean matches(String str) {
        DeepLinkUri parse = DeepLinkUri.parse(str);
        return parse != null && this.regex.matcher(schemeHostAndPath(parse)).find();
    }
}
