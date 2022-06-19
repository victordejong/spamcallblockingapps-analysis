package com.appnext.base.moments.p014b;
/* renamed from: com.appnext.base.moments.b.b */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/b/b.class */
public final class C0490b {

    /* renamed from: com.appnext.base.moments.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/base/moments/b/b$a.class */
    public enum EnumC0491a {
        String("String"),
        Long("Long"),
        Double("Double"),
        Integer("Integer"),
        HashMap("HashMap"),
        ArrayList("ArrayList"),
        Boolean("Boolean"),
        JSONArray("JSONArray"),
        JSONObject("JSONObject"),
        Set("Set");
        
        private String mDataType;

        EnumC0491a(String str) {
            this.mDataType = str;
        }

        public final String getType() {
            return this.mDataType;
        }
    }
}
