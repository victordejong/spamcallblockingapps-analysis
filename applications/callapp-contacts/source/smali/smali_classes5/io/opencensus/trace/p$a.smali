.class final Lio/opencensus/trace/p$a;
.super Lio/opencensus/trace/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 352
    invoke-direct {p0}, Lio/opencensus/trace/p;-><init>()V

    const-string v0, "name"

    .line 353
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lio/opencensus/trace/p;
    .locals 0

    return-object p0
.end method

.method public final b()Lio/opencensus/trace/o;
    .locals 1

    .line 329
    sget-object v0, Lio/opencensus/trace/j;->a:Lio/opencensus/trace/j;

    return-object v0
.end method
