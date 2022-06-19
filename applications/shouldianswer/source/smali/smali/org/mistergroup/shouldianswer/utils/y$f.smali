.class final Lorg/mistergroup/shouldianswer/utils/y$f;
.super Lkotlin/e/b/i;
.source "SystemServices.kt"

# interfaces
.implements Lkotlin/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/utils/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/a<",
        "Landroid/content/pm/PackageManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/y$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/y$f;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/y$f;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y$f;->a:Lorg/mistergroup/shouldianswer/utils/y$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/y$f;->b()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/pm/PackageManager;
    .locals 1

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method
