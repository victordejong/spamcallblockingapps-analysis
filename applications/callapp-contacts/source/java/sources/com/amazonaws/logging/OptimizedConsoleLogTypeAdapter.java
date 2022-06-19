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
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/OptimizedConsoleLogTypeAdapter.class */
public class OptimizedConsoleLogTypeAdapter extends AbstractC16088j implements AbstractC21026b {

    /* renamed from: a */
    private C15965f f12115a;

    /* renamed from: b */
    private _OptimizedJsonReader f12116b;

    /* renamed from: c */
    private _OptimizedJsonWriter f12117c;

    public OptimizedConsoleLogTypeAdapter(C15965f c15965f, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f12115a = c15965f;
        this.f12116b = _optimizedjsonreader;
        this.f12117c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.AbstractC16088j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        ConsoleLog consoleLog = new ConsoleLog();
        C15965f c15965f = this.f12115a;
        _OptimizedJsonReader _optimizedjsonreader = this.f12116b;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int mo123b = _optimizedjsonreader.mo123b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (mo123b != 57) {
                if (mo123b != 61) {
                    jsonReader.skipValue();
                } else if (z) {
                    consoleLog.f12108b = (LogFactory.Level) c15965f.m7971a(LogFactory.Level.class).read(jsonReader);
                } else {
                    consoleLog.f12108b = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                consoleLog.f12107a = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
            } else {
                consoleLog.f12107a = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
        return consoleLog;
    }

    @Override // com.google.gson.AbstractC16088j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        ConsoleLog consoleLog = (ConsoleLog) obj;
        C15965f c15965f = this.f12115a;
        _OptimizedJsonWriter _optimizedjsonwriter = this.f12117c;
        jsonWriter.beginObject();
        if (consoleLog != consoleLog.f12107a) {
            _optimizedjsonwriter.mo120b(jsonWriter, 57);
            jsonWriter.value(consoleLog.f12107a);
        }
        if (consoleLog != consoleLog.f12108b) {
            _optimizedjsonwriter.mo120b(jsonWriter, 61);
            LogFactory.Level level = consoleLog.f12108b;
            C21025a.m117a(c15965f, LogFactory.Level.class, level).write(jsonWriter, level);
        }
        jsonWriter.endObject();
    }
}
