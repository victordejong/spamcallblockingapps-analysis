package com.amazonaws.mobileconnectors.s3.transferutility;

import com.google.gson.JsonSyntaxException;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.a;
import proguard.optimize.gson.b;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter.class */
public class OptimizedTransferUtilityOptionsTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f6684a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f6685b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f6686c;

    public OptimizedTransferUtilityOptionsTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f6684a = fVar;
        this.f6685b = _optimizedjsonreader;
        this.f6686c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        TransferUtilityOptions transferUtilityOptions = new TransferUtilityOptions();
        f fVar = this.f6684a;
        _OptimizedJsonReader _optimizedjsonreader = this.f6685b;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int b2 = _optimizedjsonreader.b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (b2 != 1) {
                if (b2 != 29) {
                    if (b2 != 37) {
                        jsonReader.skipValue();
                    } else if (z) {
                        try {
                            transferUtilityOptions.f6738b = jsonReader.nextInt();
                        } catch (NumberFormatException e) {
                            throw new JsonSyntaxException(e);
                        }
                    } else {
                        jsonReader.nextNull();
                    }
                } else if (z) {
                    transferUtilityOptions.f6739c = (TransferNetworkConnectionType) fVar.a(TransferNetworkConnectionType.class).read(jsonReader);
                } else {
                    transferUtilityOptions.f6739c = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                transferUtilityOptions.f6737a = ((Long) fVar.a(Long.class).read(jsonReader)).longValue();
            } else {
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
        return transferUtilityOptions;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        TransferUtilityOptions transferUtilityOptions = (TransferUtilityOptions) obj;
        f fVar = this.f6684a;
        _OptimizedJsonWriter _optimizedjsonwriter = this.f6686c;
        jsonWriter.beginObject();
        _optimizedjsonwriter.b(jsonWriter, 1);
        Class cls = Long.TYPE;
        Long valueOf = Long.valueOf(transferUtilityOptions.f6737a);
        a.a(fVar, cls, valueOf).write(jsonWriter, valueOf);
        _optimizedjsonwriter.b(jsonWriter, 37);
        jsonWriter.value(Integer.valueOf(transferUtilityOptions.f6738b));
        if (transferUtilityOptions != transferUtilityOptions.f6739c) {
            _optimizedjsonwriter.b(jsonWriter, 29);
            TransferNetworkConnectionType transferNetworkConnectionType = transferUtilityOptions.f6739c;
            a.a(fVar, TransferNetworkConnectionType.class, transferNetworkConnectionType).write(jsonWriter, transferNetworkConnectionType);
        }
        jsonWriter.endObject();
    }
}
