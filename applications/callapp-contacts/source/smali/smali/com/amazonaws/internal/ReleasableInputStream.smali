.class public Lcom/amazonaws/internal/ReleasableInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/internal/Releasable;


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/amazonaws/internal/ReleasableInputStream;

    .line 42
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/ReleasableInputStream;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/amazonaws/internal/ReleasableInputStream;
    .locals 1

    .line 126
    instance-of v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Lcom/amazonaws/internal/ReleasableInputStream;

    return-object p0

    .line 130
    :cond_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 131
    check-cast p0, Ljava/io/FileInputStream;

    invoke-static {p0}, Lcom/amazonaws/internal/ResettableInputStream;->a(Ljava/io/FileInputStream;)Lcom/amazonaws/internal/ResettableInputStream;

    move-result-object p0

    return-object p0

    .line 133
    :cond_1
    new-instance v0, Lcom/amazonaws/internal/ReleasableInputStream;

    invoke-direct {v0, p0}, Lcom/amazonaws/internal/ReleasableInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    sget-object v1, Lcom/amazonaws/internal/ReleasableInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FYI"

    .line 86
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/amazonaws/internal/Releasable;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazonaws/internal/Releasable;

    .line 93
    invoke-interface {v0}, Lcom/amazonaws/internal/Releasable;->a()V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->abortIfNeeded()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->b()V

    return-void
.end method

.method public final close()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/amazonaws/internal/ReleasableInputStream;->b:Z

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/amazonaws/internal/ReleasableInputStream;->b()V

    :cond_0
    return-void
.end method
