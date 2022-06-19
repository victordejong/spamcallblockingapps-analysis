.class public final Lcom/facebook/login/a;
.super Landroidx/browser/customtabs/e;
.source "SourceFile"


# static fields
.field private static a:Landroidx/browser/customtabs/c;

.field private static c:Landroidx/browser/customtabs/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/browser/customtabs/e;-><init>()V

    return-void
.end method

.method public static a()Landroidx/browser/customtabs/f;
    .locals 2

    .line 52
    sget-object v0, Lcom/facebook/login/a;->c:Landroidx/browser/customtabs/f;

    const/4 v1, 0x0

    .line 53
    sput-object v1, Lcom/facebook/login/a;->c:Landroidx/browser/customtabs/f;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/login/a;->c:Landroidx/browser/customtabs/f;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/facebook/login/a;->b()V

    .line 46
    :cond_0
    sget-object v0, Lcom/facebook/login/a;->c:Landroidx/browser/customtabs/f;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0, p0}, Landroidx/browser/customtabs/f;->a(Landroid/net/Uri;)Z

    :cond_1
    return-void
.end method

.method private static b()V
    .locals 1

    .line 35
    sget-object v0, Lcom/facebook/login/a;->c:Landroidx/browser/customtabs/f;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/facebook/login/a;->a:Landroidx/browser/customtabs/c;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroidx/browser/customtabs/c;->b()Landroidx/browser/customtabs/f;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/a;->c:Landroidx/browser/customtabs/f;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/browser/customtabs/c;)V
    .locals 0

    .line 60
    sput-object p1, Lcom/facebook/login/a;->a:Landroidx/browser/customtabs/c;

    invoke-virtual {p1}, Landroidx/browser/customtabs/c;->a()Z

    .line 61
    invoke-static {}, Lcom/facebook/login/a;->b()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
