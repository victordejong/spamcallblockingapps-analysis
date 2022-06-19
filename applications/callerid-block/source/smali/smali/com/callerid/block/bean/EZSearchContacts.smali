.class public Lcom/callerid/block/bean/EZSearchContacts;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private address:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private belong_area:Ljava/lang/String;

.field private cc:Ljava/lang/String;

.field private date:J

.field private e164_tel_number:Ljava/lang/String;

.field private faild_error_log:I

.field private fb_avatar:Ljava/lang/String;

.field private format_tel_number:Ljava/lang/String;

.field private id:I

.field private isSearched:Z

.field private is_can_search:Z

.field private name:Ljava/lang/String;

.field private old_tel_number:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private report_count:Ljava/lang/String;

.field private search_time:J

.field private searched_buyu:Z

.field private soft_comments:Ljava/lang/String;

.field private t_p:Ljava/lang/String;

.field private tag_main:Ljava/lang/String;

.field private tag_sub:Ljava/lang/String;

.field private tel_number:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private type_label:Ljava/lang/String;

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[]"

    iput-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->soft_comments:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->is_can_search:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBelong_area()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->belong_area:Ljava/lang/String;

    return-object v0
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->date:J

    return-wide v0
.end method

.method public getE164_tel_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->e164_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getFaild_error_log()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->faild_error_log:I

    return v0
.end method

.method public getFb_avatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->fb_avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat_tel_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->format_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_tel_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->old_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getReport_count()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->report_count:Ljava/lang/String;

    return-object v0
.end method

.method public getSearch_time()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->search_time:J

    return-wide v0
.end method

.method public getSoft_comments()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->soft_comments:Ljava/lang/String;

    return-object v0
.end method

.method public getT_p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->t_p:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_main()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->tag_main:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_sub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->tag_sub:Ljava/lang/String;

    return-object v0
.end method

.method public getTel_number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getType_label()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->type_label:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->website:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_can_search()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->is_can_search:Z

    return v0
.end method

.method public isSearched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->isSearched:Z

    return v0
.end method

.method public isSearched_buyu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/EZSearchContacts;->searched_buyu:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->address:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBelong_area(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->belong_area:Ljava/lang/String;

    return-void
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->cc:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->date:J

    return-void
.end method

.method public setE164_tel_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->e164_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setFaild_error_log(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->faild_error_log:I

    return-void
.end method

.method public setFb_avatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->fb_avatar:Ljava/lang/String;

    return-void
.end method

.method public setFormat_tel_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->format_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->id:I

    return-void
.end method

.method public setIs_can_search(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->is_can_search:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->name:Ljava/lang/String;

    return-void
.end method

.method public setOld_tel_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->old_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->operator:Ljava/lang/String;

    return-void
.end method

.method public setReport_count(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->report_count:Ljava/lang/String;

    return-void
.end method

.method public setSearch_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->search_time:J

    return-void
.end method

.method public setSearched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->isSearched:Z

    return-void
.end method

.method public setSearched_buyu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->searched_buyu:Z

    return-void
.end method

.method public setSoft_comments(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->soft_comments:Ljava/lang/String;

    return-void
.end method

.method public setT_p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->t_p:Ljava/lang/String;

    return-void
.end method

.method public setTag_main(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->tag_main:Ljava/lang/String;

    return-void
.end method

.method public setTag_sub(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->tag_sub:Ljava/lang/String;

    return-void
.end method

.method public setTel_number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->tel_number:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->type:Ljava/lang/String;

    return-void
.end method

.method public setType_label(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->type_label:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSearchContacts;->website:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EZSearchContacts{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/bean/EZSearchContacts;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tel_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/bean/EZSearchContacts;->tel_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", old_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->old_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->format_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->operator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type_label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->type_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", report_count=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->report_count:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", belong_area=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->belong_area:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", faild_error_log="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->faild_error_log:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fb_avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->fb_avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_main=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->tag_main:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_sub=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->tag_sub:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", soft_comments=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->soft_comments:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", website=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->website:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", t_p=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->t_p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isSearched="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->isSearched:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", search_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->search_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", e164_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->e164_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/EZSearchContacts;->cc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", searched_buyu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callerid/block/bean/EZSearchContacts;->searched_buyu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_can_search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callerid/block/bean/EZSearchContacts;->is_can_search:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
