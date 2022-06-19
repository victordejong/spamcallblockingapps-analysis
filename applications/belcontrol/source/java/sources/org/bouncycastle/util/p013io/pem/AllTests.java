package org.bouncycastle.util.p013io.pem;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import junit.textui.TestRunner;
/* renamed from: org.bouncycastle.util.io.pem.AllTests */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/io/pem/AllTests.class */
public class AllTests extends TestCase {
    private void lengthTest(String str, List list, byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PemWriter pemWriter = new PemWriter(new OutputStreamWriter(byteArrayOutputStream));
        PemObject pemObject = new PemObject(str, list, bArr);
        pemWriter.writeObject(pemObject);
        pemWriter.close();
        TestCase.assertEquals(byteArrayOutputStream.toByteArray().length, pemWriter.getOutputSize(pemObject));
    }

    public static void main(String[] strArr) {
        TestRunner.run(suite());
    }

    public static Test suite() {
        TestSuite testSuite = new TestSuite("util tests");
        testSuite.addTestSuite(AllTests.class);
        return testSuite;
    }

    public void testPemLength() {
        for (int i = 1; i != 60; i++) {
            lengthTest("CERTIFICATE", Collections.EMPTY_LIST, new byte[i]);
        }
        List list = Collections.EMPTY_LIST;
        lengthTest("CERTIFICATE", list, new byte[100]);
        lengthTest("CERTIFICATE", list, new byte[101]);
        lengthTest("CERTIFICATE", list, new byte[102]);
        lengthTest("CERTIFICATE", list, new byte[103]);
        lengthTest("CERTIFICATE", list, new byte[1000]);
        lengthTest("CERTIFICATE", list, new byte[CredentialsApi.ACTIVITY_RESULT_OTHER_ACCOUNT]);
        lengthTest("CERTIFICATE", list, new byte[CredentialsApi.ACTIVITY_RESULT_NO_HINTS_AVAILABLE]);
        lengthTest("CERTIFICATE", list, new byte[1003]);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PemHeader("Proc-Type", "4,ENCRYPTED"));
        arrayList.add(new PemHeader("DEK-Info", "DES3,0001020304050607"));
        lengthTest("RSA PRIVATE KEY", arrayList, new byte[103]);
    }
}
