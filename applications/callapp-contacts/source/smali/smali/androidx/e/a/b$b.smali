.class public abstract Landroidx/e/a/b$b;
.super Landroidx/e/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/e/a/c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/e/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/e/a/b$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroidx/e/a/b$b;-><init>(Ljava/lang/String;)V

    return-void
.end method
