.class public Lcom/amazonaws/event/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:I

.field private final c:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x2000

    .line 42
    iput p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->b:I

    .line 72
    iput-object p2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    return-void
.end method

.method private a()V
    .locals 3

    .line 150
    iget-boolean v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/4 v1, 0x4

    .line 154
    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    const/4 v1, 0x0

    .line 155
    iput v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    .line 156
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private b(I)V
    .locals 4

    .line 160
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    .line 162
    iget p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->b:I

    if-lt v0, p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {p1, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x400

    .line 83
    iput p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->b:I

    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    if-lez v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    .line 146
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->a()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;->b(I)V

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->a()V

    :cond_0
    if-eq p1, p2, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;->b(I)V

    :cond_1
    return p1
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 124
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/16 v1, 0x20

    .line 125
    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 126
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->c:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->d:I

    return-void
.end method
