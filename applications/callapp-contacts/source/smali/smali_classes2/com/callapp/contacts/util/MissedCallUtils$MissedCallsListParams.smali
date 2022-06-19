.class public Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/MissedCallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedCallsListParams"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->c:I

    .line 204
    iput p2, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->b:I

    .line 205
    iput-boolean p3, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    .line 215
    iget-boolean v2, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 216
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->b:I

    iget v3, p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 217
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->c:I

    iget p1, p1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->c:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget v1, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    iget v1, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->c:I

    add-int/2addr v0, v1

    return v0
.end method
