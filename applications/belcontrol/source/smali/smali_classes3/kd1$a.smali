.class public Lkd1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkd1;->b(Lmd1$b;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lkd1;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p2, p0, Lkd1$a;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lr71$a;->K:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkd1$a;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lk61;->D(Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void
.end method
