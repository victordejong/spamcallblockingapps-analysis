package com.callapp.common.util;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Joiner.class */
public class Joiner {

    /* renamed from: a  reason: collision with root package name */
    private final String f10384a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f10385b = false;

    private Joiner(Joiner joiner) {
        this.f10384a = joiner.f10384a;
    }

    private Joiner(String str) {
        this.f10384a = str;
    }

    public static Joiner a(String str) {
        return new Joiner(str);
    }

    public final Joiner a() {
        Joiner joiner = new Joiner(this);
        joiner.f10385b = true;
        return joiner;
    }

    public final String a(Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : iterable) {
            if (!this.f10385b || obj != null) {
                if (z) {
                    z = false;
                } else {
                    sb.append(this.f10384a);
                }
                sb.append(String.valueOf(obj));
            }
        }
        return sb.toString();
    }

    public final String a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : objArr) {
            if (this.f10385b) {
                z = z;
                if (obj == null) {
                }
            }
            if (z) {
                z = false;
            } else {
                sb.append(this.f10384a);
            }
            sb.append(String.valueOf(obj));
        }
        return sb.toString();
    }
}
