.class public Lcom/criteo/publisher/advancednative/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Lcom/criteo/publisher/m0/c;

.field private final c:Lcom/criteo/publisher/m0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/m0/c;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/b;->a:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/b;->c:Lcom/criteo/publisher/m0/g;

    .line 55
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/b;->b:Lcom/criteo/publisher/m0/c;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method
