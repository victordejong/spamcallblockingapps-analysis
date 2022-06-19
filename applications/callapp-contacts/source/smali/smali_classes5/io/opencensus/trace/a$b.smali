.class public abstract Lio/opencensus/trace/a$b;
.super Lio/opencensus/trace/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lio/opencensus/trace/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/opencensus/trace/a;
    .locals 2

    .line 131
    new-instance v0, Lio/opencensus/trace/c;

    const-string v1, "stringValue"

    .line 132
    invoke-static {p0, v1}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lio/opencensus/trace/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method
