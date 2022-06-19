.class public interface abstract Lo1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/k$b;
    }
.end annotation


# static fields
.field public static final a:Lo1/k$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Lo1/k$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo1/k$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo1/k$b$c;-><init>(Lo1/k$a;)V

    sput-object v0, Lo1/k;->a:Lo1/k$b$c;

    .line 2
    new-instance v0, Lo1/k$b$b;

    invoke-direct {v0, v1}, Lo1/k$b$b;-><init>(Lo1/k$a;)V

    sput-object v0, Lo1/k;->b:Lo1/k$b$b;

    return-void
.end method
