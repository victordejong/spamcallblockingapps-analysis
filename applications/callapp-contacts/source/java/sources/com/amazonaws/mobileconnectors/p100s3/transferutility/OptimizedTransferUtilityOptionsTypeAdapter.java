package com.amazonaws.mobileconnectors.p100s3.transferutility;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.OptimizedTransferUtilityOptionsTypeAdapter */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/OptimizedTransferUtilityOptionsTypeAdapter.class */
public class OptimizedTransferUtilityOptionsTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f12139a;

    /* renamed from: b */
    private _OptimizedJsonReader f12140b;

    /* renamed from: c */
    private _OptimizedJsonWriter f12141c;

    public OptimizedTransferUtilityOptionsTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f12139a = c15965f;
        this.f12140b = _optimizedjsonreader;
        this.f12141c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        TransferUtilityOptions transferUtilityOptions = new TransferUtilityOptions();
        C15965f c15965f = this.f12139a;
        _OptimizedJsonReader _optimizedjsonreader = this.f12140b;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int mo123b = _optimizedjsonreader.mo123b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (mo123b != 1) {
                if (mo123b != 29) {
                    if (mo123b != 37) {
                        jsonReader.skipValue();
                    } else if (z) {
                        try {
                            transferUtilityOptions.f12242b = jsonReader.nextInt();
                        } catch (NumberFormatException e) {
                            throw new JsonSyntaxException(e);
                        }
                    } else {
                        jsonReader.nextNull();
                    }
                } else if (z) {
                    transferUtilityOptions.f12243c = (TransferNetworkConnectionType) c15965f.m7971a(TransferNetworkConnectionType.class).read(jsonReader);
                } else {
                    transferUtilityOptions.f12243c = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                transferUtilityOptions.f12241a = ((Long) c15965f.m7971a(Long.class).read(jsonReader)).longValue();
            } else {
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
        return transferUtilityOptions;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        TransferUtilityOptions transferUtilityOptions = (TransferUtilityOptions) obj;
        C15965f c15965f = this.f12139a;
        _OptimizedJsonWriter _optimizedjsonwriter = this.f12141c;
        jsonWriter.beginObject();
        _optimizedjsonwriter.mo120b(jsonWriter, 1);
        Class cls = Long.TYPE;
        Long valueOf = Long.valueOf(transferUtilityOptions.f12241a);
        C21025a.m117a(c15965f, cls, valueOf).write(jsonWriter, valueOf);
        _optimizedjsonwriter.mo120b(jsonWriter, 37);
        jsonWriter.value(Integer.valueOf(transferUtilityOptions.f12242b));
        if (transferUtilityOptions != transferUtilityOptions.f12243c) {
            _optimizedjsonwriter.mo120b(jsonWriter, 29);
            TransferNetworkConnectionType transferNetworkConnectionType = transferUtilityOptions.f12243c;
            C21025a.m117a(c15965f, TransferNetworkConnectionType.class, transferNetworkConnectionType).write(jsonWriter, transferNetworkConnectionType);
        }
        jsonWriter.endObject();
    }
}
