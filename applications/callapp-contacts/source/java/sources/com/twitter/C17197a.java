package com.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
/* renamed from: com.twitter.a */
/* loaded from: classes4-dex2jar.jar:com/twitter/a.class */
public final class C17197a {

    /* renamed from: a */
    protected boolean f60898a = true;

    /* renamed from: com.twitter.a$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/a$a.class */
    public static final class C17198a {

        /* renamed from: a */
        protected int f60899a;

        /* renamed from: b */
        protected int f60900b;

        /* renamed from: c */
        protected final String f60901c;

        /* renamed from: d */
        protected final String f60902d;

        /* renamed from: e */
        protected final EnumC17199a f60903e;

        /* renamed from: f */
        protected String f60904f;

        /* renamed from: g */
        protected String f60905g;

        /* renamed from: com.twitter.a$a$a */
        /* loaded from: classes4-dex2jar.jar:com/twitter/a$a$a.class */
        public enum EnumC17199a {
            URL,
            HASHTAG,
            MENTION,
            CASHTAG
        }

        public C17198a(int i, int i2, String str, EnumC17199a enumC17199a) {
            this(i, i2, str, null, enumC17199a);
        }

        public C17198a(int i, int i2, String str, String str2, EnumC17199a enumC17199a) {
            this.f60904f = null;
            this.f60905g = null;
            this.f60899a = i;
            this.f60900b = i2;
            this.f60901c = str;
            this.f60902d = str2;
            this.f60903e = enumC17199a;
        }

        public C17198a(Matcher matcher, EnumC17199a enumC17199a, int i) {
            this(matcher, enumC17199a, i, -1);
        }

        public C17198a(Matcher matcher, EnumC17199a enumC17199a, int i, int i2) {
            this(matcher.start(i) + i2, matcher.end(i), matcher.group(i), enumC17199a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C17198a)) {
                return false;
            }
            C17198a c17198a = (C17198a) obj;
            return this.f60903e.equals(c17198a.f60903e) && this.f60899a == c17198a.f60899a && this.f60900b == c17198a.f60900b && this.f60901c.equals(c17198a.f60901c);
        }

        public final int hashCode() {
            return this.f60903e.hashCode() + this.f60901c.hashCode() + this.f60899a + this.f60900b;
        }

        public final String toString() {
            return this.f60901c + "(" + this.f60903e + ") [" + this.f60899a + "," + this.f60900b + "]";
        }
    }

    /* renamed from: a */
    public final List<C17198a> m5726a(String str) {
        if (str != null && str.length() != 0) {
            if (str.indexOf(this.f60898a ? 46 : 58) != -1) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = C17200b.f60913h.matcher(str);
                while (matcher.find()) {
                    if (matcher.group(4) != null || (this.f60898a && !C17200b.f60915j.matcher(matcher.group(2)).matches())) {
                        String group = matcher.group(3);
                        int start = matcher.start(3);
                        int end = matcher.end(3);
                        Matcher matcher2 = C17200b.f60914i.matcher(group);
                        if (matcher2.find()) {
                            group = matcher2.group();
                            end = group.length() + start;
                        }
                        arrayList.add(new C17198a(start, end, group, C17198a.EnumC17199a.URL));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }
}
