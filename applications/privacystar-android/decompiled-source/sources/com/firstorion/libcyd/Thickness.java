package com.firstorion.libcyd;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Thickness.class */
enum Thickness {
    None,
    Thin,
    Medium,
    Thick;

    static Thickness valueOrDefault(Thickness thickness) {
        Thickness thickness2 = thickness;
        if (thickness == null) {
            thickness2 = None;
        }
        return thickness2;
    }
}
