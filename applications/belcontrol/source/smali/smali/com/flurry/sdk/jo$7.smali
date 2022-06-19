.class public final Lcom/flurry/sdk/jo$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/flurry/sdk/jo;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jo;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jo$7;->c:Lcom/flurry/sdk/jo;

    iput-object p2, p0, Lcom/flurry/sdk/jo$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/jo$7;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    iget-object v1, p0, Lcom/flurry/sdk/jo$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/jo$7;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/is;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
