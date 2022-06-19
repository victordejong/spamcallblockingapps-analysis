.class public final Lcom/linkedin/android/litr/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/media/MediaFormat;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkedin/android/litr/a/a;

    .line 1055
    iput-object p2, p1, Lcom/linkedin/android/litr/a/a;->b:Landroid/media/MediaFormat;

    return-void
.end method
