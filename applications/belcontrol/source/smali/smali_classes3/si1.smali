.class public abstract Lsi1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lsi1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lsi1;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lsi1;
    .locals 3

    sget-object v0, Lsi1;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsi1;

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    new-instance v1, Lui1;

    invoke-direct {v1, p0}, Lui1;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    new-instance v1, Lti1;

    invoke-direct {v1, p0}, Lti1;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lvi1;

    invoke-direct {v1, p0}, Lvi1;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method


# virtual methods
.method public abstract b(J)Lsi1;
.end method

.method public abstract c(Lhi1$a;)Lsi1;
.end method

.method public abstract d(F)Lsi1;
.end method
