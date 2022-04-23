package com.facebook.stetho.server.http;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/http/ExactPathMatcher.class */
public class ExactPathMatcher implements PathMatcher {
    private final String mPath;

    public ExactPathMatcher(String str) {
        this.mPath = str;
    }

    @Override // com.facebook.stetho.server.http.PathMatcher
    public boolean match(String str) {
        return this.mPath.equals(str);
    }
}
