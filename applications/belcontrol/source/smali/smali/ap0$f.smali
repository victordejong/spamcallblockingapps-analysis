.class public final Lap0$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfn0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lap0;->j(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfn0$d<",
        "Lym0$b;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lym0$b;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lym0$b;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lym0$b;

    invoke-virtual {p0, p1}, Lap0$f;->a(Lym0$b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
