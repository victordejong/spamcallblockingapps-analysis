package com.criteo.publisher.j0;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/d.class */
public class d extends IOException {
    public d(int i) {
        super("Received HTTP error status: ".concat(String.valueOf(i)));
    }
}
