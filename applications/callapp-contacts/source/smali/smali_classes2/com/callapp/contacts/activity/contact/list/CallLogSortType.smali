.class public final enum Lcom/callapp/contacts/activity/contact/list/CallLogSortType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/list/CallLogSortType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/list/CallLogSortType;",
        "",
        "index",
        "",
        "title",
        "",
        "isDefault",
        "",
        "(Ljava/lang/String;IILjava/lang/String;Z)V",
        "getIndex",
        "()I",
        "()Z",
        "getTitle",
        "()Ljava/lang/String;",
        "SORTED_BY_DATE",
        "SORTED_BY_FREQ",
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
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

.field public static final enum SORTED_BY_DATE:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

.field public static final enum SORTED_BY_FREQ:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;


# instance fields
.field private final index:I

.field private final isDefault:Z

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    new-instance v7, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    const v1, 0x7f120678

    .line 7
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "Activities.getString(R.string.sort_by_date)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "SORTED_BY_DATE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v7, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->SORTED_BY_DATE:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    const v2, 0x7f120679

    .line 8
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "Activities.getString(R.string.sort_by_frequency)"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "SORTED_BY_FREQ"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;-><init>(Ljava/lang/String;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->SORTED_BY_FREQ:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->index:I

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->title:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->isDefault:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/list/CallLogSortType;
    .locals 1

    const-class v0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/list/CallLogSortType;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->$VALUES:[Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->index:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final isDefault()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->isDefault:Z

    return v0
.end method
