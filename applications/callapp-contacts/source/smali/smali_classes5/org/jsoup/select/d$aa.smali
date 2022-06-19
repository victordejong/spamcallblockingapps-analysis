.class public final Lorg/jsoup/select/d$aa;
.super Lorg/jsoup/select/d$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "aa"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 502
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/d$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jsoup/nodes/h;)I
    .locals 1

    .line 1241
    iget-object v0, p1, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 507
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->m()Lorg/jsoup/select/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/c;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->q()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-child"

    return-object v0
.end method
