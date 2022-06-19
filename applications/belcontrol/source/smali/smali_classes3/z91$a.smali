.class public Lz91$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz91;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz91;


# direct methods
.method public constructor <init>(Lz91;)V
    .locals 0

    iput-object p1, p0, Lz91$a;->a:Lz91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lz91$a;->a:Lz91;

    invoke-static {v2}, Lz91;->a(Lz91;)[Lz91$d;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lfa1$g;->a:Landroid/net/Uri;

    iget-object v2, p0, Lz91$a;->a:Lz91;

    invoke-static {v2}, Lz91;->a(Lz91;)[Lz91$d;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lz91$a;->a:Lz91;

    invoke-static {v0}, Lz91;->a(Lz91;)[Lz91$d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Lz91$d;->onChange(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
