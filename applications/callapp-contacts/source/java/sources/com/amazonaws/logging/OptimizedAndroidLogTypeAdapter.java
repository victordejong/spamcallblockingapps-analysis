package com.amazonaws.logging;

import com.amazonaws.logging.LogFactory;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import proguard.optimize.gson.AbstractC21026b;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/OptimizedAndroidLogTypeAdapter.class */
public class OptimizedAndroidLogTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f12112a;

    /* renamed from: b */
    private _OptimizedJsonReader f12113b;

    /* renamed from: c */
    private _OptimizedJsonWriter f12114c;

    public OptimizedAndroidLogTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f12112a = c15965f;
        this.f12113b = _optimizedjsonreader;
        this.f12114c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        AndroidLog androidLog = new AndroidLog();
        C15965f c15965f = this.f12112a;
        _OptimizedJsonReader _optimizedjsonreader = this.f12113b;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int mo123b = _optimizedjsonreader.mo123b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (mo123b != 57) {
                if (mo123b != 61) {
                    jsonReader.skipValue();
                } else if (z) {
                    androidLog.f12106b = (LogFactory.Level) c15965f.m7971a(LogFactory.Level.class).read(jsonReader);
                } else {
                    androidLog.f12106b = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                androidLog.f12105a = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
            } else {
                androidLog.f12105a = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
        return androidLog;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        AndroidLog androidLog = (AndroidLog) obj;
        C15965f c15965f = this.f12112a;
        _OptimizedJsonWriter _optimizedjsonwriter = this.f12114c;
        jsonWriter.beginObject();
        if (androidLog != androidLog.f12105a) {
            _optimizedjsonwriter.mo120b(jsonWriter, 57);
            jsonWriter.value(androidLog.f12105a);
        }
        if (androidLog != androidLog.f12106b) {
            _optimizedjsonwriter.mo120b(jsonWriter, 61);
            LogFactory.Level level = androidLog.f12106b;
            C21025a.m117a(c15965f, LogFactory.Level.class, level).write(jsonWriter, level);
        }
        jsonWriter.endObject();
    }
}
