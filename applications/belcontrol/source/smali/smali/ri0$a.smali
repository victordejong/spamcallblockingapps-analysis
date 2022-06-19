.class public Lri0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkm0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lri0;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lri0;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lri0$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lri0$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lon0;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
