.class public interface abstract La50;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La50$b;
    }
.end annotation


# static fields
.field public static final a:La50$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:La50$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La50$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La50$b$c;-><init>(La50$a;)V

    sput-object v0, La50;->a:La50$b$c;

    new-instance v0, La50$b$b;

    invoke-direct {v0, v1}, La50$b$b;-><init>(La50$a;)V

    sput-object v0, La50;->b:La50$b$b;

    return-void
.end method
