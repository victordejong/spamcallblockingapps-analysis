.class public interface abstract Landroidx/work/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/h$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/h$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Landroidx/work/h$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/h$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/h$b$c;-><init>(Landroidx/work/h$a;)V

    sput-object v0, Landroidx/work/h;->a:Landroidx/work/h$b$c;

    new-instance v0, Landroidx/work/h$b$b;

    invoke-direct {v0, v1}, Landroidx/work/h$b$b;-><init>(Landroidx/work/h$a;)V

    sput-object v0, Landroidx/work/h;->b:Landroidx/work/h$b$b;

    return-void
.end method
