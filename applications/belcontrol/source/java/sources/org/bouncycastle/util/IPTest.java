package org.bouncycastle.util;

import junit.framework.TestCase;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/IPTest.class */
public class IPTest extends TestCase {
    private static final String[] validIP4v = {"0.0.0.0", "255.255.255.255", "192.168.0.0"};
    private static final String[] invalidIP4v = {"0.0.0.0.1", "256.255.255.255", "1", "A.B.C", "1:.4.6.5"};
    private static final String[] validIP6v = {"0:0:0:0:0:0:0:0", "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF", "0:1:2:3:FFFF:5:FFFF:1"};
    private static final String[] invalidIP6v = {"0.0.0.0:1", "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFFF"};

    private void testIP(String[] strArr, String[] strArr2) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < strArr.length) {
                if (!IPAddress.isValid(strArr[i2])) {
                    TestCase.fail("Valid input string not accepted: " + strArr[i2] + ".");
                }
                i2++;
            }
        }
        for (i = 0; i < strArr2.length; i++) {
            if (IPAddress.isValid(strArr2[i])) {
                TestCase.fail("Invalid input string accepted: " + strArr2[i] + ".");
            }
        }
    }

    public String getName() {
        return "IPTest";
    }

    public void testIPv4() {
        testIP(validIP4v, invalidIP4v);
    }

    public void testIPv6() {
        testIP(validIP6v, invalidIP6v);
    }
}
