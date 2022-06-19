.class abstract Lio/opencensus/trace/a$a;
.super Lio/opencensus/trace/a;
.source "AttributeValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/a;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/String;)Lio/opencensus/trace/a;
    .locals 2

    .line 1
    new-instance v0, Lio/opencensus/trace/b;

    const-string v1, "stringValue"

    .line 2
    invoke-static {p0, v1}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lio/opencensus/trace/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract c()Ljava/lang/String;
.end method
