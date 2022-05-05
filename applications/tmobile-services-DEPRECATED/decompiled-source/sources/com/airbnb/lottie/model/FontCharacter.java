package com.airbnb.lottie.model;

import androidx.annotation.RestrictTo;
import com.airbnb.lottie.model.content.ShapeGroup;
import java.util.List;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/FontCharacter.class */
public class FontCharacter {

    /* renamed from: a */
    private final List<ShapeGroup> f6073a;

    /* renamed from: b */
    private final char f6074b;

    /* renamed from: c */
    private final double f6075c;

    /* renamed from: d */
    private final String f6076d;

    /* renamed from: e */
    private final String f6077e;

    public FontCharacter(List<ShapeGroup> list, char c, double d, double d2, String str, String str2) {
        this.f6073a = list;
        this.f6074b = c;
        this.f6075c = d2;
        this.f6076d = str;
        this.f6077e = str2;
    }

    /* renamed from: c */
    public static int m16090c(char c, String str, String str2) {
        return ((((0 + c) * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    /* renamed from: a */
    public List<ShapeGroup> m16092a() {
        return this.f6073a;
    }

    /* renamed from: b */
    public double m16091b() {
        return this.f6075c;
    }

    public int hashCode() {
        return m16090c(this.f6074b, this.f6077e, this.f6076d);
    }
}
