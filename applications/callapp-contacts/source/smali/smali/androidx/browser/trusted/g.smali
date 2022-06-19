.class public final Landroidx/browser/trusted/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/g$c;,
        Landroidx/browser/trusted/g$a;,
        Landroidx/browser/trusted/g$e;,
        Landroidx/browser/trusted/g$b;,
        Landroidx/browser/trusted/g$d;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/a/a/b;

.field private final b:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/a/a/b;Landroid/content/ComponentName;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroidx/browser/trusted/g;->a:Landroid/support/a/a/b;

    .line 68
    iput-object p2, p0, Landroidx/browser/trusted/g;->b:Landroid/content/ComponentName;

    return-void
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 307
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bundle must contain "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
