.class public Lcom/criteo/publisher/advancednative/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/advancednative/q$a;
    }
.end annotation


# instance fields
.field final a:Lcom/criteo/publisher/advancednative/o;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/criteo/publisher/advancednative/q$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/o;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/q;->b:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/q;->c:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/q;->a:Lcom/criteo/publisher/advancednative/o;

    return-void
.end method
