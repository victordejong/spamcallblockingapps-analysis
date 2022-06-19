.class public Ld2/j3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ld2/f4;


# direct methods
.method public constructor <init>(Ld2/f4;Ld2/j3$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string p2, "payload"

    .line 2
    invoke-virtual {p1, p2}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 4
    :goto_0
    iput-object p1, p0, Ld2/j3$b;->a:Ld2/f4;

    .line 5
    sget-object p2, Ld2/x;->e:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "heartbeatLastTimestamp"

    invoke-static {p1, v0, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/j3$b;->a:Ld2/f4;

    invoke-virtual {v0}, Ld2/f4;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
