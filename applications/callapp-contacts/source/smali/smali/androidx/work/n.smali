.class public interface abstract Landroidx/work/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/n$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/n$a$c;

.field public static final b:Landroidx/work/n$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Landroidx/work/n$a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/n$a$c;-><init>(Landroidx/work/n$1;)V

    sput-object v0, Landroidx/work/n;->a:Landroidx/work/n$a$c;

    .line 52
    new-instance v0, Landroidx/work/n$a$b;

    invoke-direct {v0, v1}, Landroidx/work/n$a$b;-><init>(Landroidx/work/n$1;)V

    sput-object v0, Landroidx/work/n;->b:Landroidx/work/n$a$b;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/work/n$a$c;",
            ">;"
        }
    .end annotation
.end method
