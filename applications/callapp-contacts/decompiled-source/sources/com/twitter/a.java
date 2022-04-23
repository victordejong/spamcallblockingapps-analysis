package com.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
/* loaded from: classes4-dex2jar.jar:com/twitter/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f35072a = true;

    /* renamed from: com.twitter.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/twitter/a$a.class */
    public static final class C0557a {

        /* renamed from: a  reason: collision with root package name */
        protected int f35073a;

        /* renamed from: b  reason: collision with root package name */
        protected int f35074b;

        /* renamed from: c  reason: collision with root package name */
        protected final String f35075c;

        /* renamed from: d  reason: collision with root package name */
        protected final String f35076d;
        protected final EnumC0558a e;
        protected String f;
        protected String g;

        /* renamed from: com.twitter.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/twitter/a$a$a.class */
        public enum EnumC0558a {
            URL,
            HASHTAG,
            MENTION,
            CASHTAG
        }

        public C0557a(int i, int i2, String str, EnumC0558a aVar) {
            this(i, i2, str, null, aVar);
        }

        public C0557a(int i, int i2, String str, String str2, EnumC0558a aVar) {
            this.f = null;
            this.g = null;
            this.f35073a = i;
            this.f35074b = i2;
            this.f35075c = str;
            this.f35076d = str2;
            this.e = aVar;
        }

        public C0557a(Matcher matcher, EnumC0558a aVar, int i) {
            this(matcher, aVar, i, -1);
        }

        public C0557a(Matcher matcher, EnumC0558a aVar, int i, int i2) {
            this(matcher.start(i) + i2, matcher.end(i), matcher.group(i), aVar);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0557a)) {
                return false;
            }
            C0557a aVar = (C0557a) obj;
            return this.e.equals(aVar.e) && this.f35073a == aVar.f35073a && this.f35074b == aVar.f35074b && this.f35075c.equals(aVar.f35075c);
        }

        public final int hashCode() {
            return this.e.hashCode() + this.f35075c.hashCode() + this.f35073a + this.f35074b;
        }

        public final String toString() {
            return this.f35075c + "(" + this.e + ") [" + this.f35073a + "," + this.f35074b + "]";
        }
    }

    public final List<C0557a> a(String str) {
        if (!(str == null || str.length() == 0)) {
            if (str.indexOf(this.f35072a ? 46 : 58) != -1) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = b.h.matcher(str);
                while (matcher.find()) {
                    if (matcher.group(4) != null || (this.f35072a && !b.j.matcher(matcher.group(2)).matches())) {
                        String group = matcher.group(3);
                        int start = matcher.start(3);
                        int end = matcher.end(3);
                        Matcher matcher2 = b.i.matcher(group);
                        if (matcher2.find()) {
                            group = matcher2.group();
                            end = group.length() + start;
                        }
                        arrayList.add(new C0557a(start, end, group, C0557a.EnumC0558a.URL));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }
}
