package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
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
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/OptimizedAndroidLogTypeAdapter.class */
public class OptimizedAndroidLogTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f6658a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f6659b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f6660c;

    public OptimizedAndroidLogTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f6658a = fVar;
        this.f6659b = _optimizedjsonreader;
        this.f6660c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        AndroidLog androidLog = new AndroidLog();
        f fVar = this.f6658a;
        _OptimizedJsonReader _optimizedjsonreader = this.f6659b;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int b2 = _optimizedjsonreader.b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (b2 != 57) {
                if (b2 != 61) {
                    jsonReader.skipValue();
                } else if (z) {
                    androidLog.f6652b = (LogFactory.Level) fVar.a(LogFactory.Level.class).read(jsonReader);
                } else {
                    androidLog.f6652b = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                androidLog.f6651a = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
            } else {
                androidLog.f6651a = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
        return androidLog;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        AndroidLog androidLog = (AndroidLog) obj;
        f fVar = this.f6658a;
        _OptimizedJsonWriter _optimizedjsonwriter = this.f6660c;
        jsonWriter.beginObject();
        if (androidLog != androidLog.f6651a) {
            _optimizedjsonwriter.b(jsonWriter, 57);
            jsonWriter.value(androidLog.f6651a);
        }
        if (androidLog != androidLog.f6652b) {
            _optimizedjsonwriter.b(jsonWriter, 61);
            LogFactory.Level level = androidLog.f6652b;
            a.a(fVar, LogFactory.Level.class, level).write(jsonWriter, level);
        }
        jsonWriter.endObject();
    }
}
