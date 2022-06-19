.class public Ln50;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln50$d;
    }
.end annotation


# static fields
.field public static a:Lf10;

.field public static b:Lf10;

.field public static c:Lf10;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln50$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln50$a;-><init>(II)V

    sput-object v0, Ln50;->a:Lf10;

    new-instance v0, Ln50$b;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ln50$b;-><init>(II)V

    sput-object v0, Ln50;->b:Lf10;

    new-instance v0, Ln50$c;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Ln50$c;-><init>(II)V

    sput-object v0, Ln50;->c:Lf10;

    return-void
.end method
