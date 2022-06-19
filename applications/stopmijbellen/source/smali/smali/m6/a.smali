.class public final Lm6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lg6/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "Lr2/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lr2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/f<",
            "Lo6/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Lm6/a;->d:Lg6/a;

    return-void
.end method

.method public constructor <init>(Lw5/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw5/b<",
            "Lr2/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lm6/a;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lm6/a;->b:Lw5/b;

    return-void
.end method
