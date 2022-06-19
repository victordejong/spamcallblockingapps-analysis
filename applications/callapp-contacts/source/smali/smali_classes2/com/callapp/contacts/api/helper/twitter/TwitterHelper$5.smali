.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(ZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$5;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 524
    check-cast p1, Lcom/twitter/sdk/android/core/models/User;

    check-cast p2, Lcom/twitter/sdk/android/core/models/User;

    .line 1527
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
