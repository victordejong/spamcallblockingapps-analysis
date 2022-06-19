.class Lcom/callapp/contacts/loader/external/GravatarLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/external/GravatarLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callapp/contacts/model/contact/GravatarData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/external/GravatarLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/external/GravatarLoader;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/GravatarLoader$2;->a:Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 143
    check-cast p1, Lcom/callapp/contacts/model/contact/GravatarData;

    check-cast p2, Lcom/callapp/contacts/model/contact/GravatarData;

    .line 1147
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->isPhotoSure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->isPhotoSure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1149
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GravatarData;->isPhotoSure()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/GravatarData;->isPhotoSure()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
