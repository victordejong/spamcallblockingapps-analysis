.class public final Lt9/g;
.super Lp9/d0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:J

.field public final c:Laa/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLaa/h;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lp9/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lt9/g;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lt9/g;->b:J

    .line 4
    iput-object p4, p0, Lt9/g;->c:Laa/h;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lt9/g;->b:J

    return-wide v0
.end method

.method public k()Lp9/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lt9/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lp9/u;->b:Ljava/util/regex/Pattern;

    .line 2
    :try_start_0
    invoke-static {v0}, Lp9/u;->a(Ljava/lang/String;)Lp9/u;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public l()Laa/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/g;->c:Laa/h;

    return-object v0
.end method
