.class public Lcom/allinone/callerid/model/EZSearchContacts;
.super Ljava/lang/Object;
.source "EZSearchContacts.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "com_allinone_callerid_model_EZSearchContacts"
.end annotation


# instance fields
.field private activity_count:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "activity_count"
    .end annotation
.end field

.field private address:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "address"
    .end annotation
.end field

.field private avatar:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "avatar"
    .end annotation
.end field

.field private belong_area:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "belong_area"
    .end annotation
.end field

.field private block_count:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "block_count"
    .end annotation
.end field

.field private can_search_commentcount:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "can_search_commentcount"
    .end annotation
.end field

.field private cc:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "cc"
    .end annotation
.end field

.field private comment_count:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "comment_count"
    .end annotation
.end field

.field private comment_tags:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "comment_tags"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "country"
    .end annotation
.end field

.field private date:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "date"
    .end annotation
.end field

.field private declined_count:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "declined_count"
    .end annotation
.end field

.field private e164_tel_number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "e164_tel_number"
    .end annotation
.end field

.field private faild_error_log:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "faild_error_log"
    .end annotation
.end field

.field private fb_avatar:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "fb_avatar"
    .end annotation
.end field

.field private format_tel_number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "format_tel_number"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
    .end annotation
.end field

.field private isSearched:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isSearched"
    .end annotation
.end field

.field private is_activity:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "is_activity"
    .end annotation
.end field

.field private is_can_search:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "is_can_search"
    .end annotation
.end field

.field private keyword:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "keyword"
    .end annotation
.end field

.field private longnumberdate:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "longnumberdate"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private name_tags:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name_tags"
    .end annotation
.end field

.field private old_tel_number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "old_tel_number"
    .end annotation
.end field

.field private onedayincomingah:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "onedayincomingah"
    .end annotation
.end field

.field private operator:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "operator"
    .end annotation
.end field

.field private report_count:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "report_count"
    .end annotation
.end field

.field private search_time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "search_time"
    .end annotation
.end field

.field private searched_buyu:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "searched_buyu"
    .end annotation
.end field

.field private soft_comments:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "soft_comments"
    .end annotation
.end field

.field private subtype:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "subtype"
    .end annotation
.end field

.field private subtype_cc:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "subtype_cc"
    .end annotation
.end field

.field private subtype_isserach:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "subtype_isserach"
    .end annotation
.end field

.field private subtype_pdt:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "subtype_pdt"
    .end annotation
.end field

.field private t_p:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "t_p"
    .end annotation
.end field

.field private tag_main:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "tag_main"
    .end annotation
.end field

.field private tag_sub:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "tag_sub"
    .end annotation
.end field

.field private tel_number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "tel_number"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "type"
    .end annotation
.end field

.field private type_label:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "type_label"
    .end annotation
.end field

.field private type_tags:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "type_tags"
    .end annotation
.end field

.field private website:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "website"
    .end annotation
.end field

.field private weekoutingnum:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "weekoutingnum"
    .end annotation
.end field

.field private weekoutingtime:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "weekoutingtime"
    .end annotation
.end field

.field private wiki_search_time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "wiki_search_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[]"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->soft_comments:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->is_can_search:Z

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->can_search_commentcount:Z

    return-void
.end method


# virtual methods
.method public getActivity_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->activity_count:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBelong_area()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->belong_area:Ljava/lang/String;

    return-object v0
.end method

.method public getBlock_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->block_count:I

    return v0
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->comment_count:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_tags()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->comment_tags:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->date:J

    return-wide v0
.end method

.method public getDeclined_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->declined_count:I

    return v0
.end method

.method public getE164_tel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->e164_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getFaild_error_log()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->faild_error_log:I

    return v0
.end method

.method public getFb_avatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->fb_avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat_tel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->format_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->id:I

    return v0
.end method

.method public getIs_activity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->is_activity:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLongnumberdate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->longnumberdate:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName_tags()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->name_tags:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_tel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->old_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getOnedayincomingah()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->onedayincomingah:I

    return v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getReport_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->report_count:Ljava/lang/String;

    return-object v0
.end method

.method public getSearch_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->search_time:J

    return-wide v0
.end method

.method public getSoft_comments()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->soft_comments:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype_cc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_cc:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype_pdt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_pdt:Ljava/lang/String;

    return-object v0
.end method

.method public getT_p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->t_p:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_main()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tag_main:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_sub()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tag_sub:Ljava/lang/String;

    return-object v0
.end method

.method public getTel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getType_label()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type_label:Ljava/lang/String;

    return-object v0
.end method

.method public getType_tags()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type_tags:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->website:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekoutingnum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->weekoutingnum:I

    return v0
.end method

.method public getWeekoutingtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->weekoutingtime:J

    return-wide v0
.end method

.method public getWiki_search_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->wiki_search_time:J

    return-wide v0
.end method

.method public isCan_search_commentcount()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->can_search_commentcount:Z

    return v0
.end method

.method public isIs_can_search()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->is_can_search:Z

    return v0
.end method

.method public isSearched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched:Z

    return v0
.end method

.method public isSearched_buyu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->searched_buyu:Z

    return v0
.end method

.method public isSubtype_isserach()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_isserach:Z

    return v0
.end method

.method public setActivity_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->activity_count:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->address:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBelong_area(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->belong_area:Ljava/lang/String;

    return-void
.end method

.method public setBlock_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->block_count:I

    return-void
.end method

.method public setCan_search_commentcount(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->can_search_commentcount:Z

    return-void
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->cc:Ljava/lang/String;

    return-void
.end method

.method public setComment_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->comment_count:Ljava/lang/String;

    return-void
.end method

.method public setComment_tags(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->comment_tags:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->country:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->date:J

    return-void
.end method

.method public setDeclined_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->declined_count:I

    return-void
.end method

.method public setE164_tel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->e164_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setFaild_error_log(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->faild_error_log:I

    return-void
.end method

.method public setFb_avatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->fb_avatar:Ljava/lang/String;

    return-void
.end method

.method public setFormat_tel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->format_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->id:I

    return-void
.end method

.method public setIs_activity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->is_activity:I

    return-void
.end method

.method public setIs_can_search(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->is_can_search:Z

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setLongnumberdate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->longnumberdate:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->name:Ljava/lang/String;

    return-void
.end method

.method public setName_tags(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->name_tags:Ljava/lang/String;

    return-void
.end method

.method public setOld_tel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->old_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setOnedayincomingah(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->onedayincomingah:I

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->operator:Ljava/lang/String;

    return-void
.end method

.method public setReport_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->report_count:Ljava/lang/String;

    return-void
.end method

.method public setSearch_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->search_time:J

    return-void
.end method

.method public setSearched(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched:Z

    return-void
.end method

.method public setSearched_buyu(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->searched_buyu:Z

    return-void
.end method

.method public setSoft_comments(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->soft_comments:Ljava/lang/String;

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype:Ljava/lang/String;

    return-void
.end method

.method public setSubtype_cc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_cc:Ljava/lang/String;

    return-void
.end method

.method public setSubtype_isserach(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_isserach:Z

    return-void
.end method

.method public setSubtype_pdt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_pdt:Ljava/lang/String;

    return-void
.end method

.method public setT_p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->t_p:Ljava/lang/String;

    return-void
.end method

.method public setTag_main(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tag_main:Ljava/lang/String;

    return-void
.end method

.method public setTag_sub(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tag_sub:Ljava/lang/String;

    return-void
.end method

.method public setTel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tel_number:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type:Ljava/lang/String;

    return-void
.end method

.method public setType_label(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type_label:Ljava/lang/String;

    return-void
.end method

.method public setType_tags(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type_tags:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->website:Ljava/lang/String;

    return-void
.end method

.method public setWeekoutingnum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->weekoutingnum:I

    return-void
.end method

.method public setWeekoutingtime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->weekoutingtime:J

    return-void
.end method

.method public setWiki_search_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->wiki_search_time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EZSearchContacts{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tel_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tel_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", old_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->old_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->format_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->operator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type_label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", report_count=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->report_count:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", belong_area=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->belong_area:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", faild_error_log="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->faild_error_log:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fb_avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->fb_avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_main=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tag_main:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_sub=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->tag_sub:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", soft_comments=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->soft_comments:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", website=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->website:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", t_p=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->t_p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type_tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->type_tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name_tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->name_tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", comment_tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->comment_tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtype=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtype_cc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_cc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtype_pdt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_pdt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtype_isserach="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->subtype_isserach:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isSearched="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", search_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->search_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", is_can_search="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->is_can_search:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", comment_count=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->comment_count:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", can_search_commentcount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->can_search_commentcount:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is_activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->is_activity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", activity_count=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->activity_count:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", e164_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->e164_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/model/EZSearchContacts;->cc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", block_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->block_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", declined_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->declined_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wiki_search_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->wiki_search_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", onedayincomingah="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->onedayincomingah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longnumberdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->longnumberdate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", searched_buyu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->searched_buyu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", weekoutingnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->weekoutingnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weekoutingtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/model/EZSearchContacts;->weekoutingtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
