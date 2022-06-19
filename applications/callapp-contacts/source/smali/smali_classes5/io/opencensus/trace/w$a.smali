.class final Lio/opencensus/trace/w$a;
.super Lio/opencensus/trace/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 366
    invoke-direct {p0}, Lio/opencensus/trace/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/w$1;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lio/opencensus/trace/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/opencensus/trace/p;
    .locals 1

    .line 1319
    new-instance v0, Lio/opencensus/trace/p$a;

    invoke-direct {v0, p1}, Lio/opencensus/trace/p$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
