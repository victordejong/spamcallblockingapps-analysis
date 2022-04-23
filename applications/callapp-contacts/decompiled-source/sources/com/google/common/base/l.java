package com.google.common.base;

import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f31934a = Logger.getLogger(l.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final k f31935b = new a();

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/l$a.class */
    static final class a implements k {
        private a() {
        }
    }

    private l() {
    }

    public static boolean a(String str) {
        return str == null || str.isEmpty();
    }
}
