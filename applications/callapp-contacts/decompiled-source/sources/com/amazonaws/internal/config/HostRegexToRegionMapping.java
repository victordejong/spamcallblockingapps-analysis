package com.amazonaws.internal.config;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/config/HostRegexToRegionMapping.class */
public class HostRegexToRegionMapping {

    /* renamed from: a  reason: collision with root package name */
    public final String f6642a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6643b;

    public HostRegexToRegionMapping(String str, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty");
        }
        try {
            Pattern.compile(str);
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: regionName must be non-empty");
            }
            this.f6642a = str;
            this.f6643b = str2;
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex", e);
        }
    }
}
