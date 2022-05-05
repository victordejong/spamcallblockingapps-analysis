package com.firstorion.libcyd;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Justify.class */
enum Justify {
    Left,
    Center,
    Right;

    public static Justify valueOrDefault(String str) throws JSONException {
        if (str == null || str.isEmpty()) {
            return Center;
        }
        if (str.equals("left")) {
            return Left;
        }
        if (str.equals("center")) {
            return Center;
        }
        if (str.equals("right")) {
            return Right;
        }
        throw new JSONException("Bad justify: " + str);
    }
}
