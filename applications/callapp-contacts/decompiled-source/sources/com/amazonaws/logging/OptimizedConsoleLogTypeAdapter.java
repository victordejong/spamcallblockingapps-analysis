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
/* loaded from: classes-dex2jar.jar:com/amazonaws/logging/OptimizedConsoleLogTypeAdapter.class */
public class OptimizedConsoleLogTypeAdapter extends j implements b {

    /* renamed from: a  reason: collision with root package name */
    private f f6661a;

    /* renamed from: b  reason: collision with root package name */
    private _OptimizedJsonReader f6662b;

    /* renamed from: c  reason: collision with root package name */
    private _OptimizedJsonWriter f6663c;

    public OptimizedConsoleLogTypeAdapter(f fVar, _OptimizedJsonReader _optimizedjsonreader, _OptimizedJsonWriter _optimizedjsonwriter) {
        this.f6661a = fVar;
        this.f6662b = _optimizedjsonreader;
        this.f6663c = _optimizedjsonwriter;
    }

    @Override // com.google.gson.j
    public Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.skipValue();
            return null;
        }
        ConsoleLog consoleLog = new ConsoleLog();
        f fVar = this.f6661a;
        _OptimizedJsonReader _optimizedjsonreader = this.f6662b;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int b2 = _optimizedjsonreader.b(jsonReader);
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (b2 != 57) {
                if (b2 != 61) {
                    jsonReader.skipValue();
                } else if (z) {
                    consoleLog.f6654b = (LogFactory.Level) fVar.a(LogFactory.Level.class).read(jsonReader);
                } else {
                    consoleLog.f6654b = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                consoleLog.f6653a = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
            } else {
                consoleLog.f6653a = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
        return consoleLog;
    }

    @Override // com.google.gson.j
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        ConsoleLog consoleLog = (ConsoleLog) obj;
        f fVar = this.f6661a;
        _OptimizedJsonWriter _optimizedjsonwriter = this.f6663c;
        jsonWriter.beginObject();
        if (consoleLog != consoleLog.f6653a) {
            _optimizedjsonwriter.b(jsonWriter, 57);
            jsonWriter.value(consoleLog.f6653a);
        }
        if (consoleLog != consoleLog.f6654b) {
            _optimizedjsonwriter.b(jsonWriter, 61);
            LogFactory.Level level = consoleLog.f6654b;
            a.a(fVar, LogFactory.Level.class, level).write(jsonWriter, level);
        }
        jsonWriter.endObject();
    }
}
