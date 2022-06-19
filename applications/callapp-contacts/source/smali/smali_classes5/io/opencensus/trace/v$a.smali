.class public final Lio/opencensus/trace/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:B


# direct methods
.method private constructor <init>(B)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-byte p1, p0, Lio/opencensus/trace/v$a;->a:B

    return-void
.end method

.method synthetic constructor <init>(BLio/opencensus/trace/v$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lio/opencensus/trace/v$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()Lio/opencensus/trace/v$a;
    .locals 1

    .line 296
    iget-byte v0, p0, Lio/opencensus/trace/v$a;->a:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/opencensus/trace/v$a;->a:B

    return-object p0
.end method

.method public final b()Lio/opencensus/trace/v;
    .locals 1

    .line 311
    iget-byte v0, p0, Lio/opencensus/trace/v$a;->a:B

    invoke-static {v0}, Lio/opencensus/trace/v;->a(B)Lio/opencensus/trace/v;

    move-result-object v0

    return-object v0
.end method
