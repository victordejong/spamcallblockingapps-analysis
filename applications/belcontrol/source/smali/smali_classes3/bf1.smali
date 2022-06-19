.class public abstract Lbf1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lbf1;
    .locals 1

    :try_start_0
    new-instance v0, Lcf1;

    invoke-direct {v0, p0}, Lcf1;-><init>(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Luf1;->a(Ljava/lang/Exception;)V

    new-instance p0, Lif1;

    invoke-direct {p0}, Lif1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Lgf1;
.end method

.method public abstract c(Landroid/webkit/WebView;)Lrf1;
.end method
