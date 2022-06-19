.class public Lp9/c$c;
.super Lp9/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lr9/e$e;

.field public final b:Laa/h;

.field public final c:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr9/e$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp9/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lp9/c$c;->a:Lr9/e$e;

    .line 3
    iput-object p2, p0, Lp9/c$c;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lp9/c$c;->d:Ljava/lang/String;

    .line 5
    iget-object p2, p1, Lr9/e$e;->c:[Laa/y;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    .line 6
    new-instance p3, Lp9/c$c$a;

    invoke-direct {p3, p0, p2, p1}, Lp9/c$c$a;-><init>(Lp9/c$c;Laa/y;Lr9/e$e;)V

    sget-object p1, Laa/o;->a:Ljava/util/logging/Logger;

    .line 7
    new-instance p1, Laa/t;

    invoke-direct {p1, p3}, Laa/t;-><init>(Laa/y;)V

    .line 8
    iput-object p1, p0, Lp9/c$c;->b:Laa/h;

    return-void
.end method


# virtual methods
.method public d()J
    .locals 3

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lp9/c$c;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public k()Lp9/u;
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/c$c;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lp9/c$c;->b:Laa/h;

    return-object v0
.end method
