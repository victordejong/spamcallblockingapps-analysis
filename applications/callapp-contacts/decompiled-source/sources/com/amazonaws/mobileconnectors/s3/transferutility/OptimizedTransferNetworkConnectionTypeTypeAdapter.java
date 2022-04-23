package com.amazonaws.mobileconnectors.s3.transferutility;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.b;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferNetworkConnectionTypeTypeAdapter.class */
public class OptimizedTransferNetworkConnectionTypeTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f6681a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f6682b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f6683c;

    public OptimizedTransferNetworkConnectionTypeTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f6681a = fVar;
        this.f6682b = _optimizedjsonreader;
        this.f6683c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        int c2 = this.f6682b.c(jsonReader);
        if (c2 == 25) {
            return TransferNetworkConnectionType.WIFI;
        }
        if (c2 == 50) {
            return TransferNetworkConnectionType.MOBILE;
        }
        if (c2 != 76) {
            return null;
        }
        return TransferNetworkConnectionType.ANY;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            this.f6683c.c(jsonWriter, obj == TransferNetworkConnectionType.ANY ? 76 : obj == TransferNetworkConnectionType.WIFI ? 25 : obj == TransferNetworkConnectionType.MOBILE ? 50 : -1);
        }
    }
}
