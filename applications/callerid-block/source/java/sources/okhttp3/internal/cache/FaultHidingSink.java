package okhttp3.internal.cache;

import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/FaultHidingSink.class */
class FaultHidingSink extends ForwardingSink {
    private boolean hasErrors;

    public FaultHidingSink(Sink sink) {
        super(sink);
    }

    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            FaultHidingSink.super.close();
        } catch (IOException e) {
            this.hasErrors = true;
            onException(e);
        }
    }

    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            FaultHidingSink.super.flush();
        } catch (IOException e) {
            this.hasErrors = true;
            onException(e);
        }
    }

    protected void onException(IOException iOException) {
    }

    public void write(Buffer buffer, long j) {
        if (this.hasErrors) {
            buffer.skip(j);
            return;
        }
        try {
            FaultHidingSink.super.write(buffer, j);
        } catch (IOException e) {
            this.hasErrors = true;
            onException(e);
        }
    }
}
