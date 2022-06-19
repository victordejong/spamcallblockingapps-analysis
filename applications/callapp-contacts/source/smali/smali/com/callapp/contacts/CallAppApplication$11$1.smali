.class Lcom/callapp/contacts/CallAppApplication$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication$11;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication$11;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$11$1;->a:Lcom/callapp/contacts/CallAppApplication$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 512
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->d()V

    return-void
.end method
