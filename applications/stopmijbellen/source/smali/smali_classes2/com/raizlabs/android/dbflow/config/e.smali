.class public final Lcom/raizlabs/android/dbflow/config/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/e$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/e$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->a:Ljava/util/Set;

    .line 3
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/config/e$a;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/e;->b:Ljava/util/Map;

    .line 4
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/config/e$a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/config/e;->c:Landroid/content/Context;

    return-void
.end method
