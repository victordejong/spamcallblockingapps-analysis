.class public final Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;",
        "",
        "()V",
        "isLegalPhoneChar",
        "",
        "ch",
        "",
        "index",
        "",
        "isPhoneValidSearch",
        "searchTerm",
        "",
        "isT9ValidSearch",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "searchTerm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p0, Ljava/lang/CharSequence;

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    invoke-static {p0, v0, v1, v1, v2}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;CIZI)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "searchTerm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-gt v6, v4, :cond_0

    if-ge v5, v4, :cond_3

    :cond_0
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x23

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method
