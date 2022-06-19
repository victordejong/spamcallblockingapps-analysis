package com.amazonaws.mobileconnectors.p100s3.transferutility;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.OptimizedTransferNetworkConnectionTypeTypeAdapter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferNetworkConnectionTypeTypeAdapter.class */
public class OptimizedTransferNetworkConnectionTypeTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f12136a;

    /* renamed from: b */
    private _OptimizedJsonReader f12137b;

    /* renamed from: c */
    private _OptimizedJsonWriter f12138c;

    public OptimizedTransferNetworkConnectionTypeTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f12136a = c15965f;
        this.f12137b = _optimizedjsonreader;
        this.f12138c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        int mo122c = this.f12137b.mo122c(jsonReader);
        if (mo122c != 25) {
            if (mo122c == 50) {
                return TransferNetworkConnectionType.MOBILE;
            }
            if (mo122c == 76) {
                return TransferNetworkConnectionType.ANY;
            }
            return null;
        }
        return TransferNetworkConnectionType.WIFI;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f12138c.mo119c(jsonWriter, obj == TransferNetworkConnectionType.ANY ? 76 : obj == TransferNetworkConnectionType.WIFI ? 25 : obj == TransferNetworkConnectionType.MOBILE ? 50 : -1);
        }
    }
}
